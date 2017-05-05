module vga_rgb_title(
    input video_on,
    input [10:0] pixel_x, pixel_y,
    output reg [4:0] vga_rgb
    );

    always @(*)
        begin
        if (video_on)
            if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 447 && pixel_x < 507) // A
                begin
                if (pixel_y < 396)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 418 && pixel_x < 459)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 418 && pixel_x >= 495)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 418 && pixel_y < 430)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 430 && pixel_x < 459)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 430 && pixel_x >= 495)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 377 && pixel_x < 437) //letter V
                begin
                if (pixel_y < 388 && pixel_x >= 421)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 388 && pixel_y < 392 && pixel_x >= 420 && pixel_x < 436)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 392 && pixel_y < 396 && pixel_x >= 419 && pixel_x < 435)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 400 && pixel_x >= 418 && pixel_x < 434)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 400 && pixel_y < 404 && pixel_x >= 417 && pixel_x < 433)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 404 && pixel_y < 408 && pixel_x >= 416 && pixel_x < 432)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 408 && pixel_y < 412 && pixel_x >= 415 && pixel_x < 431)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 412 && pixel_y < 416 && pixel_x >= 414 && pixel_x < 430)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 416 && pixel_y < 420 && pixel_x >= 413 && pixel_x < 429)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 420 && pixel_y < 424 && pixel_x >= 412 && pixel_x < 428)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 424 && pixel_y < 428 && pixel_x >= 411 && pixel_x < 427)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 428 && pixel_y < 432 && pixel_x >= 410 && pixel_x < 426)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 432 && pixel_y < 436 && pixel_x >= 409 && pixel_x < 425)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 436 && pixel_y < 440 && pixel_x >= 408 && pixel_x < 424)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 440 && pixel_y < 444 && pixel_x >= 407 && pixel_x < 423)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 444 && pixel_y < 448 && pixel_x >= 406 && pixel_x < 422)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 448 && pixel_y < 452 && pixel_x >= 405 && pixel_x < 421)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452 && pixel_y < 456 && pixel_x >= 404 && pixel_x < 420)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 456 && pixel_y < 460 && pixel_x >= 403 && pixel_x < 419)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 460 && pixel_y < 464 && pixel_x >= 402 && pixel_x < 418)
                    vga_rgb = 5'b01110;
                else if (pixel_y < 388 && pixel_x < 393)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 388 && pixel_y < 392 && pixel_x >= 378 && pixel_x < 394)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 392 && pixel_y < 396 && pixel_x >= 379 && pixel_x < 395)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 400 && pixel_x >= 380 && pixel_x < 396)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 400 && pixel_y < 404 && pixel_x >= 381 && pixel_x < 397)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 404 && pixel_y < 408 && pixel_x >= 382 && pixel_x < 398)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 408 && pixel_y < 412 && pixel_x >= 383 && pixel_x < 399)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 412 && pixel_y < 416 && pixel_x >= 384 && pixel_x < 400)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 416 && pixel_y < 420 && pixel_x >= 385 && pixel_x < 401)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 420 && pixel_y < 424 && pixel_x >= 386 && pixel_x < 402)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 424 && pixel_y < 428 && pixel_x >= 387 && pixel_x < 403)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 428 && pixel_y < 432 && pixel_x >= 388 && pixel_x < 404)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 432 && pixel_y < 436 && pixel_x >= 389 && pixel_x < 405)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 436 && pixel_y < 440 && pixel_x >= 390 && pixel_x < 406)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 440 && pixel_y < 444 && pixel_x >= 391 && pixel_x < 407)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 444 && pixel_y < 448 && pixel_x >= 392 && pixel_x < 408)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 448 && pixel_y < 452 && pixel_x >= 393 && pixel_x < 409)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452 && pixel_y < 456 && pixel_x >= 394 && pixel_x < 410)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 456 && pixel_y < 460 && pixel_x >= 395 && pixel_x < 411)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 460 && pixel_y < 464 && pixel_x >= 396 && pixel_x < 412)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 307 && pixel_x < 367) //letter N
                begin
                if (pixel_x < 321)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 353)
                    vga_rgb = 5'b01110;
                else if (pixel_y < 388 && pixel_x < 335)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 388 && pixel_y < 392 && pixel_x >= 319 && pixel_x < 336)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 392 && pixel_y < 396 && pixel_x >= 321 && pixel_x < 337)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 400 && pixel_x >= 322 && pixel_x < 338)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 400 && pixel_y < 404 && pixel_x >= 323 && pixel_x < 339)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 404 && pixel_y < 408 && pixel_x >= 324 && pixel_x < 340)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 408 && pixel_y < 412 && pixel_x >= 325 && pixel_x < 341)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 412 && pixel_y < 416 && pixel_x >= 326 && pixel_x < 342)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 416 && pixel_y < 420 && pixel_x >= 327 && pixel_x < 343)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 420 && pixel_y < 424 && pixel_x >= 328 && pixel_x < 344)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 424 && pixel_y < 428 && pixel_x >= 329 && pixel_x < 345)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 428 && pixel_y < 432 && pixel_x >= 330 && pixel_x < 346)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 432 && pixel_y < 436 && pixel_x >= 331 && pixel_x < 347)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 436 && pixel_y < 440 && pixel_x >= 332 && pixel_x < 348)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 440 && pixel_y < 444 && pixel_x >= 333 && pixel_x < 349)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 444 && pixel_y < 448 && pixel_x >= 334 && pixel_x < 350)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 448 && pixel_y < 452 && pixel_x >= 335 && pixel_x < 351)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452 && pixel_y < 456 && pixel_x >= 336 && pixel_x < 352)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 456 && pixel_y < 460 && pixel_x >= 337 && pixel_x < 355)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 460 && pixel_y < 464 && pixel_x >= 338 && pixel_x < 355)
                    vga_rgb = 5'b01110;                  
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 237 && pixel_x < 297) //letter I
                begin
                if (pixel_y < 396)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 452 && pixel_x >= 261 && pixel_x < 273)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 517 && pixel_x < 577) //letter D
                begin
                if (pixel_x < 529)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 414 && pixel_y < 434 && pixel_x >= 565)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 411 && pixel_y < 414 && pixel_x >= 564 && pixel_x < 576)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 408 && pixel_y < 411 && pixel_x >= 563 && pixel_x < 575)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 405 && pixel_y < 408 && pixel_x >= 562 && pixel_x < 574)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 402 && pixel_y < 405 && pixel_x >= 561 && pixel_x < 573)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 399 && pixel_y < 402 && pixel_x >= 560 && pixel_x < 572)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 399 && pixel_x >= 559 && pixel_x < 571)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 393 && pixel_y < 396 && pixel_x < 570)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 390 && pixel_y < 393 && pixel_x < 569)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 387 && pixel_y < 390 && pixel_x < 568)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 384 && pixel_y < 387 && pixel_x < 567)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 434 && pixel_y < 437 && pixel_x >= 564 && pixel_x < 576)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 437 && pixel_y < 440 && pixel_x >= 563 && pixel_x < 575)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 440 && pixel_y < 443 && pixel_x >= 562 && pixel_x < 574)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 443 && pixel_y < 446 && pixel_x >= 561 && pixel_x < 573)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 446 && pixel_y < 449 && pixel_x >= 560 && pixel_x < 572)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 449 && pixel_y < 452 && pixel_x >= 559 && pixel_x < 571)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452 && pixel_y < 455 && pixel_x < 570)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 455 && pixel_y < 458 && pixel_x < 569)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 458 && pixel_y < 461 && pixel_x < 568)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 461 && pixel_y < 464 && pixel_x < 567)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 587 && pixel_x < 647) //letter E
                begin
                if (pixel_y < 396)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 418 && pixel_x < 599)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 418 && pixel_y < 430)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 430 && pixel_y < 452 && pixel_x < 599)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 657 && pixel_x < 717) //letter R
                begin
                if (pixel_x < 669)
                    vga_rgb = 5'b01110;
                else if (pixel_y < 396)
                    vga_rgb = 5'b01110;
                else if (pixel_x >= 705 && pixel_y < 416)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 416 && pixel_y < 428)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 428 && pixel_y < 430 && pixel_x >= 669 && pixel_x < 685)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 430 && pixel_y < 432 && pixel_x >= 671 && pixel_x < 687)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 432 && pixel_y < 434 && pixel_x >= 673 && pixel_x < 689)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 434 && pixel_y < 436 && pixel_x >= 675 && pixel_x < 691)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 436 && pixel_y < 438 && pixel_x >= 677 && pixel_x < 693)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 438 && pixel_y < 440 && pixel_x >= 679 && pixel_x < 695)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 440 && pixel_y < 442 && pixel_x >= 681 && pixel_x < 697)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 442 && pixel_y < 444 && pixel_x >= 683 && pixel_x < 699)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 444 && pixel_y < 446 && pixel_x >= 685 && pixel_x < 701)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 446 && pixel_y < 448 && pixel_x >= 687 && pixel_x < 703)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 448 && pixel_y < 450 && pixel_x >= 689 && pixel_x < 705)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 450 && pixel_y < 452 && pixel_x >= 691 && pixel_x < 707)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452 && pixel_y < 454 && pixel_x >= 693 && pixel_x < 709)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 454 && pixel_y < 456 && pixel_x >= 695 && pixel_x < 711)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 456 && pixel_y < 458 && pixel_x >= 697 && pixel_x < 713)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 458 && pixel_y < 460 && pixel_x >= 699 && pixel_x < 715)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 460 && pixel_y < 462 && pixel_x >= 701 && pixel_x < 717)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 462 && pixel_y < 464 && pixel_x >= 703 && pixel_x < 717)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 384 && pixel_y < 464 && pixel_x >= 727 && pixel_x < 787) //letter S
                begin
                if (pixel_y < 396)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 396 && pixel_y < 418 && pixel_x < 739)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 418 && pixel_y < 430)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 430 && pixel_y < 452 && pixel_x >= 775)
                    vga_rgb = 5'b01110;
                else if (pixel_y >= 452)
                    vga_rgb = 5'b01110;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 294 && pixel_y < 374 && pixel_x >= 342 && pixel_x < 402) //letter S
                begin
                if (pixel_y < 306)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 306 && pixel_y < 328 && pixel_x < 354)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 328 && pixel_y < 340)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 340 && pixel_y < 362 && pixel_x >= 390)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 362)
                    vga_rgb = 5'b00010;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 294 && pixel_y < 374 && pixel_x >= 412 && pixel_x < 472) //letter P
                begin
                if (pixel_x < 424)
                    vga_rgb = 5'b00010;
                else if (pixel_y < 306)
                    vga_rgb = 5'b00010;
                else if (pixel_x >= 460 && pixel_y < 326)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 326 && pixel_y < 338)
                    vga_rgb = 5'b00010;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 294 && pixel_y < 374 && pixel_x >= 482 && pixel_x < 542) //letter A
                begin
                if (pixel_y < 306)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 306 && pixel_y < 328 && pixel_x < 494)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 306 && pixel_y < 328 && pixel_x >= 530)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 328 && pixel_y < 340)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 340 && pixel_x < 494)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 340 && pixel_x >= 530)
                    vga_rgb = 5'b00010;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 294 && pixel_y < 374 && pixel_x >= 552 && pixel_x < 612) //letter C
                begin
                if (pixel_y < 306)
                    vga_rgb = 5'b00010;
                else if (pixel_x < 564)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 362)
                    vga_rgb = 5'b00010;
                else
                    vga_rgb = 5'b00000;
                end
            else if (pixel_y >= 294 && pixel_y < 374 && pixel_x >= 622 && pixel_x < 682) //letter E
                begin
                if (pixel_y < 306)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 306 && pixel_y < 328 && pixel_x < 634)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 328 && pixel_y < 340)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 340 && pixel_y < 362 && pixel_x < 634)
                    vga_rgb = 5'b00010;
                else if (pixel_y >= 362)
                    vga_rgb = 5'b00010;
                else
                    vga_rgb = 5'b00000;
                end
            else
                vga_rgb = 5'b00000;
        else
            vga_rgb = 5'b00000;
        end
endmodule

 
